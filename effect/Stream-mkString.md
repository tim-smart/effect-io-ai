## mkString

Returns a combined string resulting from concatenating each of the values
from the stream.

**Signature**

```ts
declare const mkString: <E, R>(self: Stream<string, E, R>) => Effect.Effect<string, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3140)

Since v2.0.0