# collectAll

Collects all of the specified exit values into a `Some<Exit<E, List<A>>>`. If
the provided iterable contains no elements, `None` will be returned.

**Note**: `Exit.collectAll` combines `Cause` values sequentially.

To import and use `collectAll` from the "Exit" module:

```ts
import * as Exit from '@effect/io/Exit'

// Can be accessed like this
Exit.collectAll
```

**Signature**

```ts
export declare const collectAll: <E, A>(exits: Iterable<Exit<E, A>>) => Option.Option<Exit<E, A[]>>
```
