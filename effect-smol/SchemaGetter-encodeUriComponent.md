Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeUriComponent

Encodes a present string using `encodeURIComponent`.

**Details**

- Skips `None` inputs.
- May throw a `URIError` for malformed surrogate pairs; this exception is not
  converted into an `Issue`.

**Example** (Encoding a URI component)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeUriComponent<string>()
```

**See**

- `decodeUriComponent` for the inverse operation

**Signature**

```ts
declare const encodeUriComponent: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1453)

Since v4.0.0