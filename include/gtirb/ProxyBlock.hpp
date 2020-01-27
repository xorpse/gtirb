//===- ProxyBlock.hpp -------------------------------------------*- C++ -*-===//
//
//  Copyright (C) 2020 GrammaTech, Inc.
//
//  This code is licensed under the MIT license. See the LICENSE file in the
//  project root for license terms.
//
//  This project is sponsored by the Office of Naval Research, One Liberty
//  Center, 875 N. Randolph Street, Arlington, VA 22203 under contract #
//  N68335-17-C-0700.  The content of the information does not necessarily
//  reflect the position or policy of the Government and no official
//  endorsement should be inferred.
//
//===----------------------------------------------------------------------===//
#ifndef GTIRB_PROX_BLOCK_H
#define GTIRB_PROX_BLOCK_H

#include <gtirb/CfgNode.hpp>
#include <gtirb/Node.hpp>
#include <proto/ProxyBlock.pb.h>

/// \file ProxyBlock.hpp
/// \ingroup CFG_GROUP
/// \brief Class gtirb::ProxyBlock.
/// \see CFG_GROUP

namespace gtirb {
class Module;

/// \class ProxyBlock
///
/// \brief A placeholder to serve as the endpoint of a CFG edge.
///
/// A ProxyBlock exists in the CFG so that edges to or from another node may be
/// constructed. For example, a call to a function in another module may be
/// represented by an edge that originates at the calling block and targets a
/// proxy. Another example would be an edge to represent an indirect jump whose
/// target is not known.
///
/// ProxyBlocks do not represent any instructions and so have neither an address
/// nor a size.
///
/// \see \ref CFG_GROUP
class GTIRB_EXPORT_API ProxyBlock : public CfgNode {
public:
  /// \brief Create an unitialized ProxyBlock object.
  /// \param C        The Context in which this ProxyBlock will be held.
  /// \return         The newly created ProxyBlock.
  static ProxyBlock* Create(Context& C) { return C.Create<ProxyBlock>(C); }

  /// \brief Create a ProxyBlock object.
  ///
  /// \param C      The Context in which this block will be held.
  /// \param Parent The \ref Module this block belongs to.
  ///
  /// \return The newly created ProxyBlock.
  static ProxyBlock* Create(Context& C, Module* Parent) {
    return C.Create<ProxyBlock>(C, Parent);
  }

  /// \brief Get the \ref Module this block belongs to.
  Module* getModule() { return Parent; }
  /// \brief Get the \ref Module this block belongs to.
  const Module* getModule() const { return Parent; }

  /// @cond INTERNAL
  /// \brief The protobuf message type used for serializing Block.
  using MessageType = proto::ProxyBlock;

  /// \brief Serialize into a protobuf message.
  ///
  /// \param[out] Message   Serialize into this message.
  ///
  /// \return void
  void toProtobuf(MessageType* Message) const;

  /// \brief Construct a Block from a protobuf message.
  ///
  /// \param C  The Context in which the deserialized Block will be held.
  /// \param Message  The protobuf message from which to deserialize.
  ///
  /// \return The deserialized Block object, or null on failure.
  static ProxyBlock* fromProtobuf(Context& C, Module* Parent,
                                  const MessageType& Message);

  static bool classof(const Node* N) {
    return N->getKind() == Kind::ProxyBlock;
  }
  /// @endcond

private:
  ProxyBlock(Context& C) : CfgNode(C, Kind::ProxyBlock) {}
  ProxyBlock(Context& C, Module* Parent)
      : CfgNode(C, Kind::ProxyBlock), Parent(Parent) {}

  void setModule(Module* M) { Parent = M; }

  Module* Parent{nullptr};

  friend class Context; // Allow Context to construct proxies.
  friend class Module;  // Allow Module to call setModule.
};

} // namespace gtirb

#endif // GTIRB_PROXY_BLOCK_H
