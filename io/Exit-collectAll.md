# collectAll

Collects all of the specified exit values into a `Some<Exit<E, List<A>>>`. If
the provided iterable contains no elements, `None` will be returned.

**Note**: `Exit.collectAll` combines `Cause` values sequentially.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const collectAll: <E, A>(exits: Iterable<Exit<E, A>>) => Option.Option<Exit<E, A[]>>
```
