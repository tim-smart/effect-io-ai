# collectAllPar

Collects all of the specified exit values into a `Some<Exit<E, List<A>>>`. If
the provided iterable contains no elements, `None` will be returned.

**Note**: `Exit.collectAll` combines `Cause` values in parallel.

To import and use `collectAllPar` from the "Exit" module:

```ts
import * as Exit from '@effect/io/Exit'

// Can be accessed like this
Exit.collectAllPar
```

**Signature**

```ts
export declare const collectAllPar: <E, A>(exits: Iterable<Exit<E, A>>) => Option.Option<Exit<E, A[]>>
```
