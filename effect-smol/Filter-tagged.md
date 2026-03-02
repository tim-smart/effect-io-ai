Package: `effect`<br />
Module: `Filter`<br />

## Filter.tagged

Creates a filter that checks if an input is tagged with a specific tag.

**Signature**

```ts
declare const tagged: { <Input>(): <const Tag extends Tags<Input>>(tag: Tag) => Filter<Input, ExtractTag<Input, Tag>, ExcludeTag<Input, Tag>>; <Input, const Tag extends Tags<Input>>(tag: Tag): Filter<Input, ExtractTag<Input, Tag>, ExcludeTag<Input, Tag>>; <const Tag extends string>(tag: Tag): <Input>(input: Input) => Result.Result<ExtractTag<Input, Tag>, ExcludeTag<Input, Tag>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L318)

Since v4.0.0