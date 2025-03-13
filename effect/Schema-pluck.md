Package: `effect`<br />
Module: `Schema`<br />

## Schema.pluck

Given a schema `Schema<A, I, R>` and a key `key: K`, this function extracts a specific field from the `A` type,
producing a new schema that represents a transformation from the `{ readonly [key]: I[K] }` type to `A[K]`.

**Example**

```ts
import * as Schema from "effect/Schema"

// ---------------------------------------------
// use case: pull out a single field from a
// struct through a transformation
// ---------------------------------------------

const mytable = Schema.Struct({
  column1: Schema.NumberFromString,
  column2: Schema.Number
})

// const pullOutColumn: S.Schema<number, {
//     readonly column1: string;
// }, never>
const pullOutColumn = mytable.pipe(Schema.pluck("column1"))

console.log(Schema.decodeUnknownEither(Schema.Array(pullOutColumn))([{ column1: "1", column2: 100 }, { column1: "2", column2: 300 }]))
// Output: { _id: 'Either', _tag: 'Right', right: [ 1, 2 ] }
```

**Signature**

```ts
declare const pluck: { <A, I, K extends keyof A & keyof I>(key: K): <R>(schema: Schema<A, I, R>) => SchemaClass<A[K], Simplify<Pick<I, K>>, R>; <A, I, R, K extends keyof A & keyof I>(schema: Schema<A, I, R>, key: K): SchemaClass<A[K], Simplify<Pick<I, K>>, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L3069)

Since v3.10.0