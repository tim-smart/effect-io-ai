Package: `effect`<br />
Module: `Effect`<br />

## Effect.TagsWithReason

Type helper that keeps only error tags whose tagged error contains a tagged `reason` field.

**When to use**

Use to constrain custom helpers or overloads to parent error tags whose error
contains a tagged reason.

**Details**

The mapped type keeps each parent error tag whose extracted tagged error has
at least one reason tag, and removes tags that do not carry tagged reasons.

**See**

- `unwrapReason` for promoting nested reason errors into the error channel
- `catchReason` for handling one nested reason tag
- `catchReasons` for handling several nested reason tags

**Signature**

```ts
type TagsWithReason<E> = {
  [T in Tags<E>]: ReasonTags<ExtractTag<E, T>> extends never ? never : T
}[Tags<E>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3124)

Since v4.0.0