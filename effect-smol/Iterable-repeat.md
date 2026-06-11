Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.repeat

Repeats an iterable `n` times, yielding the full contents of `self` for each
repetition.

**When to use**

Use to repeat an iterable's contents a specific number of times.

**Details**

The result is lazy. Each repetition obtains a new iterator from `self`.

**See**

- `forever` for repeating without an upper bound
- `replicate` for repeating a single value

**Signature**

```ts
declare const repeat: { (n: number): <A>(self: Iterable<A>) => Iterable<A>; <A>(self: Iterable<A>, n: number): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L145)

Since v4.0.0