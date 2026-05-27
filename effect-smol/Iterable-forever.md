Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.forever

Repeats an iterable without an upper bound.

**When to use**

Use to cycle a reusable iterable without an upper bound when a downstream
consumer controls how many values are taken.

**Gotchas**

The returned iterable is lazy and should usually be bounded with `take` or
another terminating consumer before materializing it.

**See**

- `repeat` for repeating an iterable a specific number of times
- `take` for bounding the unbounded result before materializing it

**Signature**

```ts
declare const forever: <A>(self: Iterable<A>) => Iterable<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L214)

Since v4.0.0