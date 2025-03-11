## PoisonPill

A PoisonPill is a special value that tells a behaviour entity to shut itself down.
PoisonPill is handled only when you are using a Queue-based RecipientBehaviour.
Other RecipientBehaviour such as fromFunctionEffect would not care about PoisonPill.

**Signature**

```ts
declare class PoisonPill
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/PoisonPill.ts#L49)

Since v1.0.0