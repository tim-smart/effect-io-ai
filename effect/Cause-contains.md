# contains

Returns `true` if the `self` cause contains or is equal to `that` cause,
`false` otherwise.

To import and use `contains` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.contains
```

**Signature**

```ts
export declare const contains: {
  <E2>(that: Cause<E2>): <E>(self: Cause<E>) => boolean
  <E, E2>(self: Cause<E>, that: Cause<E2>): boolean
}
```
