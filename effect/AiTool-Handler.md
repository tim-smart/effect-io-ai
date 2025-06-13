Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.Handler

Represents an `AiTool` that has been implemented within the application.

**Signature**

```ts
export interface Handler<Name extends string> {
  readonly _: unique symbol
  readonly name: Name
  readonly handler: (params: any) => Effect.Effect<any, any>
  readonly context: Context_.Context<never>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L183)

Since v1.0.0