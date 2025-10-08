Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ConstructorParams

A utility type for specifying the parameters required to construct a
specific response part.

**Signature**

```ts
type ConstructorParams<Part> = Omit<Part, PartTypeId | "type" | "sourceType" | "metadata"> & {
  /**
   * Optional provider-specific metadata for this part.
   */
  readonly metadata?: Part["metadata"] | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L557)

Since v1.0.0