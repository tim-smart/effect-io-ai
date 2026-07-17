Package: `effect`<br />
Module: `Schema`<br />

## Schema.ResultIso

Iso representation used for `Result` schemas.

**Details**

Successful results are represented as `{ _tag: "Success", success }`, while
failed results are represented as `{ _tag: "Failure", failure }`.

**Signature**

```ts
type ResultIso<A, E> = | { readonly _tag: "Success"; readonly success: A["Iso"] }
  | { readonly _tag: "Failure"; readonly failure: E["Iso"] }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L8837)

Since v4.0.0