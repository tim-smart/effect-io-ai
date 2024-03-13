# pluck

Given a schema `Schema<A, I, R>` and a key `key: K`, this function extracts a specific field from the `A` type,
producing a new schema that represents a transformation from the `{ readonly [key]: I[K] }` type to `A[K]`.

To import and use `pluck` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.pluck
```

**Example**

```ts
import * as S from "@effect/schema/Schema"

// ---------------------------------------------
// use case: pull out a single field from a
// struct through a transformation
// ---------------------------------------------

const mytable = S.struct({
  column1: S.NumberFromString,
  column2: S.number
})

// const pullOutColumn: S.Schema<number, {
//     readonly column1: string;
// }, never>
const pullOutColumn = mytable.pipe(S.pluck("column1"))

console.log(
  S.decodeUnknownEither(S.array(pullOutColumn))([
    { column1: "1", column2: 100 },
    { column1: "2", column2: 300 }
  ])
)
// Output: { _id: 'Either', _tag: 'Right', right: [ 1, 2 ] }
```

**Signature**

```ts
export declare const pluck: {
  <A, K extends keyof A>(
    key: K
  ): <I extends { [P in K]?: any }, R>(schema: Schema<A, I, R>) => Schema<A[K], { readonly [P in K]: I[P] }, R>
  <A, I extends { [P in K]?: any }, R, K extends keyof A>(
    schema: Schema<A, I, R>,
    key: K
  ): Schema<A[K], { readonly [P in K]: I[P] }, R>
}
```
