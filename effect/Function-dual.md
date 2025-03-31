Package: `effect`<br />
Module: `Function`<br />

## Function.dual

Creates a function that can be used in a data-last (aka `pipe`able) or
data-first style.

The first parameter to `dual` is either the arity of the uncurried function
or a predicate that determines if the function is being used in a data-first
or data-last style.

Using the arity is the most common use case, but there are some cases where
you may want to use a predicate. For example, if you have a function that
takes an optional argument, you can use a predicate to determine if the
function is being used in a data-first or data-last style.

You can pass either the arity of the uncurried function or a predicate
which determines if the function is being used in a data-first or
data-last style.

**Example** (Using arity to determine data-first or data-last style)

```ts
import { dual, pipe } from "effect/Function"

const sum = dual<
  (that: number) => (self: number) => number,
  (self: number, that: number) => number
>(2, (self, that) => self + that)

console.log(sum(2, 3)) // 5
console.log(pipe(2, sum(3))) // 5
```

**Example** (Using call signatures to define the overloads)

```ts
import { dual, pipe } from "effect/Function"

const sum: {
  (that: number): (self: number) => number
  (self: number, that: number): number
} = dual(2, (self: number, that: number): number => self + that)

console.log(sum(2, 3)) // 5
console.log(pipe(2, sum(3))) // 5
```

**Example** (Using a predicate to determine data-first or data-last style)

```ts
import { dual, pipe } from "effect/Function"

const sum = dual<
  (that: number) => (self: number) => number,
  (self: number, that: number) => number
>(
  (args) => args.length === 2,
  (self, that) => self + that
)

console.log(sum(2, 3)) // 5
console.log(pipe(2, sum(3))) // 5
```

**Signature**

```ts
declare const dual: { <DataLast extends (...args: Array<any>) => any, DataFirst extends (...args: Array<any>) => any>(arity: Parameters<DataFirst>["length"], body: DataFirst): DataLast & DataFirst; <DataLast extends (...args: Array<any>) => any, DataFirst extends (...args: Array<any>) => any>(isDataFirst: (args: IArguments) => boolean, body: DataFirst): DataLast & DataFirst; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L95)

Since v2.0.0