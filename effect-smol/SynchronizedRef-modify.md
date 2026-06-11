Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.modify

Computes a return value and a new ref value atomically, stores the new value,
and returns the computed result.

**When to use**

Use to derive a separate result and the next stored `SynchronizedRef` value
from the same current value in one serialized pure update.

**See**

- `modifyEffect` for effectfully deriving both the result and next stored value
- `modifySome` for deriving a result and optionally updating the stored value
- `updateAndGet` for returning the new stored value instead of a separate result

**Signature**

```ts
declare const modify: { <A, B>(f: (a: A) => readonly [B, A]): (self: SynchronizedRef<A>) => Effect.Effect<B>; <A, B>(self: SynchronizedRef<A>, f: (a: A) => readonly [B, A]): Effect.Effect<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L282)

Since v2.0.0