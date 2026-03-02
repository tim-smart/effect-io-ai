Package: `effect`<br />
Module: `Effect`<br />

## Effect.TagsWithReason

Type helper that keeps only error tags whose tagged error contains a tagged `reason` field.

Used by `catchReasons` and `unwrapReason` to constrain the parent error tag to reason-bearing errors.

**Signature**

```ts
type TagsWithReason<E> = {
  [T in Tags<E>]: ReasonTags<ExtractTag<E, T>> extends never ? never : T
}[Tags<E>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3086)

Since v4.0.0