Package: `effect`<br />
Module: `Sink`<br />

## Sink.head

Creates a sink containing the first value.

**Details**

Returns `Option.some(first)` for non-empty input, or `Option.none` when the
upstream ends without input. The first element is consumed; later elements
from the same pulled array are emitted as leftovers.

**Signature**

```ts
declare const head: <In>() => Sink<Option.Option<In>, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1415)

Since v2.0.0