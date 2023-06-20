# getSemigroup

This function creates and returns a new `Semigroup` for a struct of values based on the given `Semigroup`s for each property in the struct.
The returned `Semigroup` combines two structs of the same type by applying the corresponding `Semigroup` passed as arguments to each property in the struct.

It is useful when you need to combine two structs of the same type and you have a specific way of combining each property of the struct.

See also {@link getMonoid}.

To import and use `getSemigroup` from the "Struct" module:

```ts
import * as Struct from '@effect/data/Struct'

// Can be accessed like this
Struct.getSemigroup
```

**Example**

```ts
import { getSemigroup } from '@effect/data/Struct'
import * as Semigroup from '@effect/data/typeclass/Semigroup'
import * as O from '@effect/data/Option'

const PersonSemigroup = getSemigroup({
  name: Semigroup.last<string>(),
  age: O.getOptionalMonoid(Semigroup.last<number>()),
})

assert.deepStrictEqual(PersonSemigroup.combine({ name: 'John', age: O.none() }, { name: 'John', age: O.some(25) }), {
  name: 'John',
  age: O.some(25),
})
assert.deepStrictEqual(PersonSemigroup.combine({ name: 'John', age: O.some(25) }, { name: 'John', age: O.none() }), {
  name: 'John',
  age: O.some(25),
})
```

**Signature**

```ts
export declare const getSemigroup: <R extends { readonly [x: string]: semigroup.Semigroup<any> }>(
  fields: R
) => semigroup.Semigroup<{ [K in keyof R]: [R[K]] extends [semigroup.Semigroup<infer A>] ? A : never }>
```
