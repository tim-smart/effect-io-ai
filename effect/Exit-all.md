# all

Collects all of the specified exit values into a `Some<Exit<E, List<A>>>`. If
the provided iterable contains no elements, `None` will be returned.

To import and use `all` from the "Exit" module:

```ts
import * as Exit from 'effect/Exit'

// Can be accessed like this
Exit.all
```

**Signature**

```ts
export declare const all: <E, A>(
  exits: Iterable<Exit<E, A>>,
  options?: { readonly parallel?: boolean } | undefined
) => Option.Option<Exit<E, A[]>>
```
