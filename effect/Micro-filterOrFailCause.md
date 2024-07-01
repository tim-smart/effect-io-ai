# filterOrFailCause

Filter the specified effect with the provided function, failing with specified
`MicroCause` if the predicate fails.

In addition to the filtering capabilities discussed earlier, you have the option to further
refine and narrow down the type of the success channel by providing a

To import and use `filterOrFailCause` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.filterOrFailCause
```

**Signature**

```ts
export declare const filterOrFailCause: {
  <A, B extends A, E2>(
    refinement: Refinement<A, B>,
    orFailWith: (a: NoInfer<A>) => MicroCause<E2>
  ): <E, R>(self: Micro<A, E, R>) => Micro<B, E2 | E, R>
  <A, E2>(
    predicate: Predicate<NoInfer<A>>,
    orFailWith: (a: NoInfer<A>) => MicroCause<E2>
  ): <E, R>(self: Micro<A, E, R>) => Micro<A, E2 | E, R>
  <A, E, R, B extends A, E2>(
    self: Micro<A, E, R>,
    refinement: Refinement<A, B>,
    orFailWith: (a: A) => MicroCause<E2>
  ): Micro<B, E | E2, R>
  <A, E, R, E2>(
    self: Micro<A, E, R>,
    predicate: Predicate<A>,
    orFailWith: (a: A) => MicroCause<E2>
  ): Micro<A, E | E2, R>
}
```
