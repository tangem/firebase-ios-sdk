// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: graphql_error.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Adapted from third_party/firebase/dataconnect/emulator/server/api/graphql_error.proto

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// GraphqlError conforms to the GraphQL error spec.
/// https://spec.graphql.org/draft/#sec-Errors
///
/// Firebase Data Connect API surfaces `GraphqlError` in various APIs:
/// - Upon compile error, `UpdateSchema` and `UpdateConnector` return
/// Code.Invalid_Argument with a list of `GraphqlError` in error details.
/// - Upon query compile error, `ExecuteGraphql` and `ExecuteGraphqlRead` return
/// Code.OK with a list of `GraphqlError` in response body.
/// - Upon query execution error, `ExecuteGraphql`, `ExecuteGraphqlRead`,
/// `ExecuteMutation` and `ExecuteQuery` all return Code.OK with a list of
/// `GraphqlError` in response body.
public struct Google_Firebase_Dataconnect_V1alpha_GraphqlError {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The detailed error message.
  /// The message should help developer understand the underlying problem without
  /// leaking internal data.
  public var message: String = String()

  /// The source locations where the error occurred.
  /// Locations should help developers and toolings identify the source of error
  /// quickly.
  ///
  /// Included in admin endpoints (`ExecuteGraphql`, `ExecuteGraphqlRead`,
  /// `UpdateSchema` and `UpdateConnector`) to reference the provided GraphQL
  /// GQL document.
  ///
  /// Omitted in `ExecuteMutation` and `ExecuteQuery` since the caller shouldn't
  /// have access access the underlying GQL source.
  public var locations: [Google_Firebase_Dataconnect_V1alpha_SourceLocation] = []

  /// The result field which could not be populated due to error.
  ///
  /// Clients can use path to identify whether a null result is intentional or
  /// caused by a runtime error.
  /// It should be a list of string or index from the root of GraphQL query
  /// document.
  public var path: SwiftProtobuf.Google_Protobuf_ListValue {
    get {return _path ?? SwiftProtobuf.Google_Protobuf_ListValue()}
    set {_path = newValue}
  }
  /// Returns true if `path` has been explicitly set.
  public var hasPath: Bool {return self._path != nil}
  /// Clears the value of `path`. Subsequent reads from it will return its default value.
  public mutating func clearPath() {self._path = nil}

  /// Additional error information.
  public var extensions: Google_Firebase_Dataconnect_V1alpha_GraphqlErrorExtensions {
    get {return _extensions ?? Google_Firebase_Dataconnect_V1alpha_GraphqlErrorExtensions()}
    set {_extensions = newValue}
  }
  /// Returns true if `extensions` has been explicitly set.
  public var hasExtensions: Bool {return self._extensions != nil}
  /// Clears the value of `extensions`. Subsequent reads from it will return its default value.
  public mutating func clearExtensions() {self._extensions = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _path: SwiftProtobuf.Google_Protobuf_ListValue? = nil
  fileprivate var _extensions: Google_Firebase_Dataconnect_V1alpha_GraphqlErrorExtensions? = nil
}

/// SourceLocation references a location in a GraphQL source.
public struct Google_Firebase_Dataconnect_V1alpha_SourceLocation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Line number starting at 1.
  public var line: Int32 = 0

  /// Column number starting at 1.
  public var column: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// GraphqlErrorExtensions contains additional information of `GraphqlError`.
/// (-- TODO(b/305311379): include more detailed error fields:
/// go/firemat:api:gql-errors.  --)
public struct Google_Firebase_Dataconnect_V1alpha_GraphqlErrorExtensions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The source file name where the error occurred.
  /// Included only for `UpdateSchema` and `UpdateConnector`, it corresponds
  /// to `File.path` of the provided `Source`.
  public var file: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Google_Firebase_Dataconnect_V1alpha_GraphqlError: @unchecked Sendable {}
extension Google_Firebase_Dataconnect_V1alpha_SourceLocation: @unchecked Sendable {}
extension Google_Firebase_Dataconnect_V1alpha_GraphqlErrorExtensions: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.firebase.dataconnect.v1alpha"

extension Google_Firebase_Dataconnect_V1alpha_GraphqlError: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GraphqlError"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "message"),
    2: .same(proto: "locations"),
    3: .same(proto: "path"),
    4: .same(proto: "extensions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.message) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.locations) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._path) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._extensions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 1)
    }
    if !self.locations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.locations, fieldNumber: 2)
    }
    try { if let v = self._path {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._extensions {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firebase_Dataconnect_V1alpha_GraphqlError, rhs: Google_Firebase_Dataconnect_V1alpha_GraphqlError) -> Bool {
    if lhs.message != rhs.message {return false}
    if lhs.locations != rhs.locations {return false}
    if lhs._path != rhs._path {return false}
    if lhs._extensions != rhs._extensions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firebase_Dataconnect_V1alpha_SourceLocation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SourceLocation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "line"),
    2: .same(proto: "column"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.line) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.column) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.line != 0 {
      try visitor.visitSingularInt32Field(value: self.line, fieldNumber: 1)
    }
    if self.column != 0 {
      try visitor.visitSingularInt32Field(value: self.column, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firebase_Dataconnect_V1alpha_SourceLocation, rhs: Google_Firebase_Dataconnect_V1alpha_SourceLocation) -> Bool {
    if lhs.line != rhs.line {return false}
    if lhs.column != rhs.column {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firebase_Dataconnect_V1alpha_GraphqlErrorExtensions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GraphqlErrorExtensions"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "file"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.file) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.file.isEmpty {
      try visitor.visitSingularStringField(value: self.file, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firebase_Dataconnect_V1alpha_GraphqlErrorExtensions, rhs: Google_Firebase_Dataconnect_V1alpha_GraphqlErrorExtensions) -> Bool {
    if lhs.file != rhs.file {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}