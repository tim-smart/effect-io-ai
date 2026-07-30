Package: `effect`<br />
Module: `Sink`<br />

## Sink.Sink

A `Sink<A, In, L, E, R>` is used to consume elements produced by a `Stream`.
You can think of a sink as a function that will consume a variable amount of
`In` elements (could be 0, 1, or many), might fail with an error of type `E`,
and will eventually yield a value of type `A` together with a remainder of
type `L` (i.e. any leftovers).

**Signature**

```ts
export interface Sink<out A, in In = unknown, out L = never, out E = never, out R = never>
  extends Sink.Variance<A, In, L, E, R>, Pipeable
{}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L48)

Since v2.0.0