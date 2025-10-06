Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.FromTaggedRequest

A utility type to convert a `Schema.TaggedRequest` into an `Tool`.

**Signature**

```ts
export interface FromTaggedRequest<S extends AnyTaggedRequestSchema> extends
  Tool<
    S["_tag"],
    {
      readonly parameters: S
      readonly success: S["success"]
      readonly failure: S["failure"]
      readonly failureMode: "error"
    }
  >
{}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L564)

Since v1.0.0