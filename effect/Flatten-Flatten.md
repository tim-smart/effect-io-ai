## Flatten

Because certain documents do not change after removal of newlines, etc, there
is no point in creating a `Union` of the flattened and unflattened versions.
All this leads to is the introduction of two possible branches for a layout
algorithm to take, resulting in potentially exponential behavior on deeply
nested examples.

**Signature**

```ts
type Flatten<A> = Flattened<A> | AlreadyFlat<A> | NeverFlat<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Flatten.ts#L32)

Since v1.0.0