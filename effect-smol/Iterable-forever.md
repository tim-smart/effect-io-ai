Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.forever

Repeats an iterable without an upper bound.

**Gotchas**

The returned iterable is lazy and should usually be bounded with `take` or
another terminating consumer before materializing it.

**Signature**

```ts
declare const forever: <A>(self: Iterable<A>) => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L177)

Since v4.0.0