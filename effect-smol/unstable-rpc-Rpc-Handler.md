Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Handler

Represents an implemented rpc.

**Signature**

```ts
export interface Handler<Tag extends string> {
  readonly _: unique symbol
  readonly tag: Tag
  readonly handler: (request: any, options: {
    readonly clientId: number
    readonly requestId: RequestId
    readonly headers: Headers
    readonly rpc: Any
  }) => Effect<any, any> | Stream<any, any>
  readonly context: Context.Context<never>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L154)

Since v4.0.0