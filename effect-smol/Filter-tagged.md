Package: `effect`<br />
Module: `Filter`<br />

## Filter.tagged

Creates a filter that checks if an input is tagged with a specific tag.

**When to use**

Use to keep only the matching member of a `_tag`-discriminated union while
staying in a composable `Filter` / `Result` pipeline.

**Details**

The filter succeeds when `Predicate.isTagged(input, tag)` returns `true`.
Otherwise it fails with the original input.

**Gotchas**

This only checks `_tag`; it does not validate the rest of the variant fields.

**See**

- `Predicate.isTagged` for the underlying boolean guard when a
`Filter` result is not needed
- `reason` for extracting a nested reason variant from tagged errors

**Signature**

```ts
declare const tagged: { <Input>(): <const Tag extends Tags<Input>>(tag: Tag) => Filter<Input, ExtractTag<Input, Tag>, ExcludeTag<Input, Tag>>; <Input, const Tag extends Tags<Input>>(tag: Tag): Filter<Input, ExtractTag<Input, Tag>, ExcludeTag<Input, Tag>>; <const Tag extends string>(tag: Tag): <Input>(input: Input) => Result.Result<ExtractTag<Input, Tag>, ExcludeTag<Input, Tag>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L471)

Since v4.0.0