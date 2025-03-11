## STM

`STM<A, E, R>` represents an effect that can be performed transactionally,
 resulting in a failure `E` or a value `A` that may require an environment
 `R` to execute.

Software Transactional Memory is a technique which allows composition of
arbitrary atomic operations.  It is the software analog of transactions in
database systems.

The API is lifted directly from the Haskell package Control.Concurrent.STM
although the implementation does not resemble the Haskell one at all.

See http://hackage.haskell.org/package/stm-2.5.0.0/docs/Control-Concurrent-STM.html

STM in Haskell was introduced in:

Composable memory transactions, by Tim Harris, Simon Marlow, Simon Peyton
Jones, and Maurice Herlihy, in ACM Conference on Principles and Practice of
Parallel Programming 2005.

See https://www.microsoft.com/en-us/research/publication/composable-memory-transactions/

See also:
 Lock Free Data Structures using STMs in Haskell, by Anthony Discolo, Tim
 Harris, Simon Marlow, Simon Peyton Jones, Satnam Singh) FLOPS 2006: Eighth
 International Symposium on Functional and Logic Programming, Fuji Susono,
 JAPAN, April 2006

 https://www.microsoft.com/en-us/research/publication/lock-free-data-structures-using-stms-in-haskell/

The implemtation is based on the ZIO STM module, while JS environments have
no race conditions from multiple threads STM provides greater benefits for
synchronization of Fibers and transactional data-types can be quite useful.

**Signature**

```ts
export interface STM<out A, out E = never, out R = never>
  extends Effect.Effect<A, E, R>, STM.Variance<A, E, R>, Pipeable
{
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: STMUnify<this>
  [Unify.ignoreSymbol]?: STMUnifyIgnore
  [Symbol.iterator](): Effect.EffectGenerator<STM<A, E, R>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L70)

Since v2.0.0