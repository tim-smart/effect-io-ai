Package: `effect`<br />
Module: `Effect`<br />

## Effect.let

Adds a computed plain value to the do notation record.

**When to use**

Use to add a derived, synchronous value to a do-notation pipeline when it
depends on fields already accumulated in the record and does not need to run
another `Effect`.

**Details**

The new field is added with object spreading. If the name already exists in
the record, the computed value replaces it in the returned type.

**See**

- `bind` for adding fields produced by effects
- `bindTo` for naming an existing success value
- `Do` for starting from an empty accumulated record
- `gen` for sequencing without accumulating a record

**Signature**

```ts
declare const let: { <N extends string, A extends Record<string, any>, B>(name: N, f: (a: NoInfer<A>) => B): <E, R>(self: Effect<A, E, R>) => Effect<Simplify<Omit<A, N> & Record<N, B>>, E, R>; <A extends Record<string, any>, E, R, B, N extends string>(self: Effect<A, E, R>, name: N, f: (a: NoInfer<A>) => B): Effect<Simplify<Omit<A, N> & Record<N, B>>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1373)

Since v2.0.0