# dual

Creates a function that can be used in a data-last (aka `pipe`able) or
data-first style.

The first parameter to `dual` is either the arity of the uncurried function
or a predicate that determines if the function is being used in a data-first
or data-last style.

Using the arity is the most common use case, but there are some cases where
you may want to use a predicate. For example, if you have a function that
takes an optional argument, you can use a predicate to determine if the
function is being used in a data-first or data-last style.

To import and use `dual` from the "Function" module:

```ts
import * as Function from '@effect/data/Function'

// Can be accessed like this
Function.dual
```

**Example**

```ts
import { dual, pipe } from '@effect/data/Function'

// Exampe using arity to determine data-first or data-last style
export const sum: {
  (that: number): (self: number) => number
  (self: number, that: number): number
} = dual(2, (self: number, that: number): number => self + that)

assert.deepStrictEqual(sum(2, 3), 5)
assert.deepStrictEqual(pipe(2, sum(3)), 5)

// Example using a predicate to determine data-first or data-last style
export const sum2: {
  (that: number): (self: number) => number
  (self: number, that: number): number
} = dual(
  (args) => args.length === 1,
  (self: number, that: number): number => self + that
)

assert.deepStrictEqual(sum(2, 3), 5)
assert.deepStrictEqual(pipe(2, sum(3)), 5)
```

**Signature**

```ts
export declare const dual: {
  <DataLast extends (...args: Array<any>) => any, DataFirst extends (...args: Array<any>) => any>(
    arity: Parameters<DataFirst>['length'],
    body: DataFirst
  ): DataLast & DataFirst
  <DataLast extends (...args: Array<any>) => any, DataFirst extends (...args: Array<any>) => any>(
    isDataFirst: (args: IArguments) => boolean,
    body: DataFirst
  ): DataLast & DataFirst
}
```
