Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Handler

Represents an `Tool` that has been implemented within the application.

**Signature**

```ts
export interface Handler<Name extends string> {
  readonly _: unique symbol
  readonly name: Name
  readonly context: Context.Context<never>
  readonly handler: (params: any) => Effect.Effect<any, any>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L656)

Since v1.0.0