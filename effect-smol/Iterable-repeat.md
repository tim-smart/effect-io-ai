Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.repeat

Repeats an iterable `n` times, yielding the full contents of `self` for each
repetition.

The result is lazy. Each repetition obtains a new iterator from `self`.

**Signature**

```ts
declare const repeat: { (n: number): <A>(self: Iterable<A>) => Iterable<A>; <A>(self: Iterable<A>, n: number): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L156)

Since v4.0.0