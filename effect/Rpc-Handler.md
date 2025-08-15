Package: `@effect/rpc`<br />
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
    readonly headers: Headers
  }) => Effect<any, any> | Stream<any, any>
  readonly context: Context<never>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/Rpc.ts#L143)

Since v1.0.0