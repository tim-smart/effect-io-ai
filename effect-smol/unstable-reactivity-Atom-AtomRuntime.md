Package: `effect`<br />
Module: `Atom`<br />

## Atom.AtomRuntime

Atom that builds a `Context` from a `Layer` and exposes constructors for atoms, functions, pulls, and subscription refs that run with that context.

**Signature**

```ts
export interface AtomRuntime<R, ER = never> extends Atom<AsyncResult.AsyncResult<Context.Context<R>, ER>> {
  readonly factory: RuntimeFactory

  readonly layer: Atom<Layer.Layer<R, ER>>

  readonly atom: {
    <A, E>(
      create: (get: AtomContext) => Effect.Effect<A, E, Scope.Scope | R | AtomRegistry | Reactivity.Reactivity>,
      options?: {
        readonly initialValue?: A
        readonly uninterruptible?: boolean | undefined
      }
    ): Atom<AsyncResult.AsyncResult<A, E | ER>>
    <A, E>(effect: Effect.Effect<A, E, Scope.Scope | R | AtomRegistry | Reactivity.Reactivity>, options?: {
      readonly initialValue?: A
      readonly uninterruptible?: boolean | undefined
    }): Atom<AsyncResult.AsyncResult<A, E | ER>>
    <A, E>(create: (get: AtomContext) => Stream.Stream<A, E, AtomRegistry | Reactivity.Reactivity | R>, options?: {
      readonly initialValue?: A
    }): Atom<AsyncResult.AsyncResult<A, E | ER | Cause.NoSuchElementError>>
    <A, E>(stream: Stream.Stream<A, E, AtomRegistry | Reactivity.Reactivity | R>, options?: {
      readonly initialValue?: A
    }): Atom<AsyncResult.AsyncResult<A, E | ER | Cause.NoSuchElementError>>
  }

  readonly fn: {
    <Arg>(): {
      <E, A>(
        fn: (arg: Arg, get: FnContext) => Effect.Effect<A, E, Scope.Scope | AtomRegistry | Reactivity.Reactivity | R>,
        options?: {
          readonly initialValue?: A | undefined
          readonly reactivityKeys?: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>> | undefined
          readonly concurrent?: boolean | undefined
        }
      ): AtomResultFn<Arg, A, E | ER>
      <E, A>(
        fn: (arg: Arg, get: FnContext) => Stream.Stream<A, E, AtomRegistry | Reactivity.Reactivity | R>,
        options?: {
          readonly initialValue?: A | undefined
          readonly reactivityKeys?: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>> | undefined
          readonly concurrent?: boolean | undefined
        }
      ): AtomResultFn<Arg, A, E | ER | Cause.NoSuchElementError>
    }
    <E, A, Arg = void>(
      fn: (arg: Arg, get: FnContext) => Effect.Effect<A, E, Scope.Scope | AtomRegistry | Reactivity.Reactivity | R>,
      options?: {
        readonly initialValue?: A | undefined
        readonly reactivityKeys?: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>> | undefined
        readonly concurrent?: boolean | undefined
      }
    ): AtomResultFn<Arg, A, E | ER>
    <E, A, Arg = void>(
      fn: (arg: Arg, get: FnContext) => Stream.Stream<A, E, AtomRegistry | Reactivity.Reactivity | R>,
      options?: {
        readonly initialValue?: A | undefined
        readonly reactivityKeys?: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>> | undefined
        readonly concurrent?: boolean | undefined
      }
    ): AtomResultFn<Arg, A, E | ER | Cause.NoSuchElementError>
  }

  readonly pull: <A, E>(
    create:
      | ((get: AtomContext) => Stream.Stream<A, E, R | AtomRegistry | Reactivity.Reactivity>)
      | Stream.Stream<A, E, R | AtomRegistry | Reactivity.Reactivity>,
    options?: {
      readonly disableAccumulation?: boolean
      readonly initialValue?: ReadonlyArray<A>
    }
  ) => Writable<PullResult<A, E | ER>, void>

  readonly subscriptionRef: <A, E>(
    create:
      | Effect.Effect<SubscriptionRef.SubscriptionRef<A>, E, Scope.Scope | R | AtomRegistry | Reactivity.Reactivity>
      | ((
        get: AtomContext
      ) => Effect.Effect<SubscriptionRef.SubscriptionRef<A>, E, Scope.Scope | R | AtomRegistry | Reactivity.Reactivity>)
  ) => Writable<AsyncResult.AsyncResult<A, E>, A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L641)

Since v4.0.0