Package: `effect`<br />
Module: `Filter`<br />

## Filter.reason

Creates a filter that extracts a reason from a tagged error.

**Signature**

```ts
declare const reason: { <Input>(): <const Tag extends Tags<Input>, const ReasonTag extends ReasonTags<ExtractTag<Input, Tag>>>(tag: Tag, reasonTag: ReasonTag) => Filter<Input, ExtractReason<ExtractTag<Input, Tag>, ReasonTag>, Input>; <Input, const Tag extends Tags<Input>, const ReasonTag extends ReasonTags<ExtractTag<Input, Tag>>>(tag: Tag, reasonTag: ReasonTag): Filter<Input, ExtractReason<ExtractTag<Input, Tag>, ReasonTag>, Input>; <const Tag extends string, const ReasonTag extends string>(tag: Tag, reasonTag: ReasonTag): <Input>(input: Input) => Result.Result<ExtractReason<ExtractTag<Input, Tag>, ReasonTag>, Input>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L341)

Since v4.0.0