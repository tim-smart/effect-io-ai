# liftNullable

This API is useful for lifting a function that returns `null` or `undefined` into the `Option` context.

Part of the `Option` module, imported from `@effect/data/Option`.

**Example**

```ts
import * as O from '@effect/data/Option'

const parse = (s: string): number | undefined => {
  const n = parseFloat(s)
  return isNaN(n) ? undefined : n
}

const parseOption = O.liftNullable(parse)

assert.deepStrictEqual(parseOption('1'), O.some(1))
assert.deepStrictEqual(parseOption('not a number'), O.none())
```

**Signature**

```ts
export declare const liftNullable: <A extends readonly unknown[], B>(
  f: (...a: A) => B | null | undefined
) => (...a: A) => Option<NonNullable<B>>
```
