Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.fromFunction

Creates a schedule that always recurs, transforming input values using the
specified function.

**Details**

This schedule continuously executes and applies the given function `f` to
each input value, producing a transformed output. The schedule itself does
not control delays or stopping conditions; it simply transforms the input
values as they are processed.

This is useful when defining schedules that map inputs to outputs, allowing
dynamic transformations of incoming data.

**Signature**

```ts
declare const fromFunction: <A, B>(f: (a: A) => B) => Schedule<B, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1118)

Since v2.0.0