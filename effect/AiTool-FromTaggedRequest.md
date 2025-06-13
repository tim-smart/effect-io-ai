Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.FromTaggedRequest

A utility type to convert a `Schema.TaggedRequest` into an `AiTool`.

**Signature**

```ts
export interface FromTaggedRequest<S extends AnyTaggedRequestSchema>
  extends AiTool<S["_tag"], S, S["success"], S["failure"]>
{}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L397)

Since v1.0.0