Package: `effect`<br />
Module: `Tool`<br />

## Tool.Handler

Represents an `Tool` that has been implemented within the application.

**Signature**

```ts
export interface Handler<Name extends string> {
  readonly _: unique symbol
  readonly name: Name
  readonly context: Context.Context<never>
  readonly handler: (params: any, ctx: any) => Effect.Effect<any, any>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L893)

Since v1.0.0