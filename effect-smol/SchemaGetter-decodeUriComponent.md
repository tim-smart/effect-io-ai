Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.decodeUriComponent

Decodes a URI component encoded string using `decodeURIComponent`.

**Details**

- Fails with `SchemaIssue.InvalidValue` if the input contains malformed percent-encoding sequences.

**Example** (Decode a URI component)

```ts
import { SchemaGetter } from "effect"

const decode = SchemaGetter.decodeUriComponent<string>()
// Getter<string, string>
```

**See**

- `encodeUriComponent` for the inverse operation

**Signature**

```ts
declare const decodeUriComponent: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1552)

Since v4.0.0