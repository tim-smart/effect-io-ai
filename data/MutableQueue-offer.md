# offer

Offers an element to the queue.

Returns whether the enqueue was successful or not.

Part of the `MutableQueue` module, imported from `@effect/data/MutableQueue`.

**Signature**

```ts
export declare const offer: {
  <A>(self: MutableQueue<A>, value: A): boolean
  <A>(value: A): (self: MutableQueue<A>) => boolean
}
```
