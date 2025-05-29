Package: `@effect/rpc`<br />
Module: `Rpc`<br />

## Rpc.Rpc

Represents an API endpoint. An API endpoint is mapped to a single route on
the underlying `HttpRouter`.

**Signature**

```ts
export interface Rpc<
  in out Tag extends string,
  out Payload extends AnyStructSchema = Schema.Struct<{}>,
  out Success extends Schema.Schema.Any = typeof Schema.Void,
  out Error extends Schema.Schema.All = typeof Schema.Never,
  out Middleware extends RpcMiddleware.TagClassAny = never
> extends Pipeable {
  new(_: never): {}

  readonly [TypeId]: TypeId
  readonly _tag: Tag
  readonly key: string
  readonly payloadSchema: Payload
  readonly successSchema: Success
  readonly errorSchema: Error
  readonly annotations: Context_.Context<never>
  readonly middlewares: ReadonlySet<Middleware>

  /**
   * Set the schema for the success response of the rpc.
   */
  setSuccess<S extends Schema.Schema.Any>(schema: S): Rpc<
    Tag,
    Payload,
    S,
    Error,
    Middleware
  >

  /**
   * Set the schema for the error response of the rpc.
   */
  setError<E extends Schema.Schema.Any>(schema: E): Rpc<
    Tag,
    Payload,
    Success,
    E,
    Middleware
  >

  /**
   * Set the schema for the payload of the rpc.
   */
  setPayload<P extends Schema.Struct<any> | Schema.Struct.Fields>(
    schema: P
  ): Rpc<
    Tag,
    P extends Schema.Struct<infer _> ? P : P extends Schema.Struct.Fields ? Schema.Struct<P> : never,
    Success,
    Error,
    Middleware
  >

  /**
   * Add an `RpcMiddleware` to this procedure.
   */
  middleware<M extends RpcMiddleware.TagClassAny>(middleware: M): Rpc<
    Tag,
    Payload,
    Success,
    Error,
    Middleware | M
  >

  /**
   * Add an annotation on the rpc.
   */
  annotate<I, S>(
    tag: Context_.Tag<I, S>,
    value: S
  ): Rpc<Tag, Payload, Success, Error, Middleware>

  /**
   * Merge the annotations of the rpc with the provided context.
   */
  annotateContext<I>(
    context: Context_.Context<I>
  ): Rpc<Tag, Payload, Success, Error, Middleware>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/Rpc.ts#L44)

Since v1.0.0