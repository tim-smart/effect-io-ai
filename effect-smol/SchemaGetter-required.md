Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.required

Creates a getter that fails with `MissingKey` if the input is absent (`Option.None`).

Use this when:
- A struct field must be present in the encoded input.
- You want schema validation to report a missing key error.

Behavior:
- When input is `None`, fails with `Issue.MissingKey`.
- When input is `Some`, passes it through unchanged.
- Optional `annotations` customize the error message for the missing key.

**Example** (Required struct field)

```ts
import { SchemaGetter } from "effect"

const mustExist = SchemaGetter.required<string>()
```

See also:
- `onNone` — provide a fallback instead of failing
- `withDefault` — substitute a default for undefined values

**Signature**

```ts
declare const required: <T, E extends T = T>(annotations?: Schema.Annotations.Key<T>) => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L433)

Since v4.0.0