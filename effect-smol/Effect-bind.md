Package: `effect`<br />
Module: `Effect`<br />

## Effect.bind

Adds an `Effect` value to the do notation record under a given name.

**When to use**

Use to sequence an effectful step in a do-notation pipeline when that step
depends on fields already accumulated in the record and its success value
should be stored under a name.

**Details**

The function receives the current record, runs the returned effect after the
input effect succeeds, and inserts its success value under `name`. The
resulting effect combines the error and service requirements of both steps.

**Gotchas**

Binding a name that already exists replaces that field in the resulting
record.

**See**

- `Do` for starting from an empty do-notation record
- `bindTo` for naming the success value of an existing effect
- `gen` for generator-based sequencing without accumulating a record

**Signature**

```ts
declare const bind: { <N extends string, A extends Record<string, any>, B, E2, R2>(name: N, f: (a: NoInfer<A>) => Effect<B, E2, R2>): <E, R>(self: Effect<A, E, R>) => Effect<Simplify<Omit<A, N> & Record<N, B>>, E | E2, R | R2>; <A extends Record<string, any>, E, R, B, E2, R2, N extends string>(self: Effect<A, E, R>, name: N, f: (a: NoInfer<A>) => Effect<B, E2, R2>): Effect<Simplify<Omit<A, N> & Record<N, B>>, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1341)

Since v2.0.0