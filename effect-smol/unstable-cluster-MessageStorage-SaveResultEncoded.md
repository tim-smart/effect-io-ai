Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.SaveResultEncoded

Constructors and matchers for encoded save results returned by storage
drivers.

**Signature**

```ts
declare const SaveResultEncoded: { readonly Success: Data.TaggedEnum.ConstructorFrom<SaveResult.Success, "_tag">; readonly Duplicate: Data.TaggedEnum.ConstructorFrom<SaveResult.DuplicateEncoded, "_tag">; readonly $is: <Tag extends "Success" | "Duplicate">(tag: Tag) => (u: unknown) => u is Extract<SaveResult.Success, { readonly _tag: Tag; }> | Extract<SaveResult.DuplicateEncoded, { readonly _tag: Tag; }>; readonly $match: { <Cases extends { readonly Success: (args: SaveResult.Success) => any; readonly Duplicate: (args: SaveResult.DuplicateEncoded) => any; }>(cases: Cases): (value: SaveResult.Encoded) => Unify<ReturnType<Cases["Success" | "Duplicate"]>>; <Cases extends { readonly Success: (args: SaveResult.Success) => any; readonly Duplicate: (args: SaveResult.DuplicateEncoded) => any; }>(value: SaveResult.Encoded, cases: Cases): Unify<ReturnType<Cases["Success" | "Duplicate"]>>; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MessageStorage.ts#L232)

Since v4.0.0