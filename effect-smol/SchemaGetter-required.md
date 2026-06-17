Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.required

Creates a getter that fails with `MissingKey` if the input is absent (`Option.None`).

**When to use**

Use when you need a schema getter to require a struct field in the encoded
input and report a missing key error when it is absent.

**Details**

- When input is `None`, fails with `SchemaIssue.MissingKey`.
- When input is `Some`, passes it through unchanged.
- Optional `annotations` customize the error message for the missing key.

**Example** (Defining a required struct field)

```ts
import { SchemaGetter } from "effect"

const mustExist = SchemaGetter.required<string>()
```

**See**

- `onNone` to provide a fallback instead of failing
- `withDefault` to substitute a default for undefined values

**Signature**

```ts
declare const required: <T, E extends T = T>(annotations?: Schema.Annotations.Key<T>) => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L368)

Since v4.0.0