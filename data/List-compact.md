# compact

Removes all `None` values from the specified list.

To import and use `compact` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.compact
```

**Signature**

```ts
export declare const compact: <A>(self: Iterable<Option.Option<A>>) => List<A>
```