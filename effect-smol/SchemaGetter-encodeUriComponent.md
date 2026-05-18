Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.encodeUriComponent

Encodes a present string using `encodeURIComponent`.

Behavior:
- Skips `None` inputs.
- May throw a `URIError` for malformed surrogate pairs; this exception is not
  converted into an `Issue`.

**Example** (Encode a URI component)

```ts
import { SchemaGetter } from "effect"

const encode = SchemaGetter.encodeUriComponent<string>()
```

See also:
- `decodeUriComponent` - inverse operation

**Signature**

```ts
declare const encodeUriComponent: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1485)

Since v4.0.0