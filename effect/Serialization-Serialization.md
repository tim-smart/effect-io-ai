## Serialization

An interface to serialize user messages that will be sent between pods.

**Signature**

```ts
export interface Serialization {
  /**
   * @since 1.0.0
   */
  readonly [SerializationTypeId]: SerializationTypeId

  /**
   * Transforms the given message into binary
   * @since 1.0.0
   */
  readonly encode: <A, I>(
    schema: Schema.Schema<A, I>,
    message: A
  ) => Effect.Effect<SerializedMessage.SerializedMessage, ShardingException.SerializationException>

  /**
   * Transform binary back into the given type
   * @since 1.0.0
   */
  readonly decode: <A, I>(
    schema: Schema.Schema<A, I>,
    bytes: SerializedMessage.SerializedMessage
  ) => Effect.Effect<A, ShardingException.SerializationException>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Serialization.ts#L29)

Since v1.0.0