Package: `@effect/ai`<br />
Module: `Toolkit`<br />

## Toolkit.HandlersFrom

A utility type that maps tool names to their required handler functions.

**Signature**

```ts
type HandlersFrom<Tools> = {
  readonly [Name in keyof Tools as Tool.RequiresHandler<Tools[Name]> extends true ? Name : never]: (
    params: Tool.Parameters<Tools[Name]>
  ) => Effect.Effect<
    Tool.Success<Tools[Name]>,
    Tool.Failure<Tools[Name]>,
    Tool.Requirements<Tools[Name]>
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L191)

Since v1.0.0