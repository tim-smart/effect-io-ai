# splitAt

Splits the specified list into two lists at the specified index.

To import and use `splitAt` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.splitAt
```

**Signature**

```ts
export declare const splitAt: {
  (n: number): <A>(self: List<A>) => readonly [List<A>, List<A>]
  <A>(self: List<A>, n: number): readonly [List<A>, List<A>]
}
```
