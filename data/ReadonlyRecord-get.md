# get

Retrieve a value at a particular key from a `ReadonlyRecord`, returning it wrapped in an `Option`.

To import and use `get` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from '@effect/data/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.get
```

**Example**

```ts
import { get } from '@effect/data/ReadonlyRecord'
import { some, none } from '@effect/data/Option'

const person = { name: 'John Doe', age: 35 }

assert.deepStrictEqual(get(person, 'name'), some('John Doe'))
assert.deepStrictEqual(get(person, 'email'), none())
```

**Signature**

```ts
export declare const get: {
  (key: string): <A>(self: ReadonlyRecord<A>) => Option<A>
  <A>(self: ReadonlyRecord<A>, key: string): Option<A>
}
```
