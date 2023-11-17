# getOrder

Gets the `Order<K>` that the `RedBlackTree<K, V>` is using.

To import and use `getOrder` from the "RedBlackTree" module:

```ts
import * as RedBlackTree from "effect/RedBlackTree"
// Can be accessed like this
RedBlackTree.getOrder
```

**Signature**

```ts
export declare const getOrder: <K, V>(self: RedBlackTree<K, V>) => Order<K>
```
