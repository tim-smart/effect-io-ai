Package: `effect`<br />
Module: `Effect`<br />

## Effect.fn.Traced

Type of the traced function builder used by `Effect.fn`.

**Signature**

```ts
type Traced = {
    <Eff extends Effect<any, any, any>, AEff, Args extends Array<any>>(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>)
    ): (...args: Args) => Effect<
      AEff,
      [Eff] extends [never] ? never
        : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
        : never,
      [Eff] extends [never] ? never
        : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
        : never
    >
    <Self, Eff extends Effect<any, any, any>, AEff, Args extends Array<any>>(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>)
    ): (this: Self, ...args: Args) => Effect<
      AEff,
      [Eff] extends [never] ? never
        : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
        : never,
      [Eff] extends [never] ? never
        : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
        : never
    >
    <Self, Eff extends Effect<any, any, any>, AEff, Args extends Array<any>>(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>)
    ): (...args: Args) => Effect<
      AEff,
      [Eff] extends [never] ? never
        : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
        : never,
      [Eff] extends [never] ? never
        : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
        : never
    >

    <Eff extends Effect<any, any, any>, AEff, Args extends Array<any>, A>(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A
    ): (...args: Args) => A
    <Self, Eff extends Effect<any, any, any>, AEff, Args extends Array<any>, A>(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A
    ): (this: Self, ...args: Args) => A
    <Self, Eff extends Effect<any, any, any>, AEff, Args extends Array<any>, A>(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A
    ): (...args: Args) => A

    <Eff extends Effect<any, any, any>, AEff, Args extends Array<any>, A, B>(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B
    ): (...args: Args) => B
    <Self, Eff extends Effect<any, any, any>, AEff, Args extends Array<any>, A, B>(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B
    ): (this: Self, ...args: Args) => B
    <Self, Eff extends Effect<any, any, any>, AEff, Args extends Array<any>, A, B>(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B
    ): (...args: Args) => B

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C
    ): (...args: Args) => C
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C
    ): (this: Self, ...args: Args) => C
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C
    ): (...args: Args) => C

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D
    ): (...args: Args) => D
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D
    ): (this: Self, ...args: Args) => D

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D
    ): (...args: Args) => D

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E
    ): (...args: Args) => E
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E
    ): (this: Self, ...args: Args) => E

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E
    ): (...args: Args) => E

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F
    ): (...args: Args) => F
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F
    ): (this: Self, ...args: Args) => F

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F
    ): (...args: Args) => F

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G
    ): (...args: Args) => G
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G
    ): (this: Self, ...args: Args) => G

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G
    ): (...args: Args) => G

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H
    ): (...args: Args) => H
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H
    ): (this: Self, ...args: Args) => H

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H
    ): (...args: Args) => H

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I
    ): (...args: Args) => I
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I
    ): (this: Self, ...args: Args) => I

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I
    ): (...args: Args) => I

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J
    ): (...args: Args) => J
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J
    ): (this: Self, ...args: Args) => J

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J
    ): (...args: Args) => J

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K
    ): (...args: Args) => K
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K
    ): (this: Self, ...args: Args) => K

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K
    ): (...args: Args) => K

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L
    ): (...args: Args) => L
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L
    ): (this: Self, ...args: Args) => L

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L
    ): (...args: Args) => L

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M
    ): (...args: Args) => M
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M
    ): (this: Self, ...args: Args) => M

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M
    ): (...args: Args) => M

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N
    ): (...args: Args) => N
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N
    ): (this: Self, ...args: Args) => N

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N
    ): (...args: Args) => N

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O
    ): (...args: Args) => O
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O
    ): (this: Self, ...args: Args) => O

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O
    ): (...args: Args) => O

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P
    ): (...args: Args) => P
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P
    ): (this: Self, ...args: Args) => P

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P
    ): (...args: Args) => P

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q
    ): (...args: Args) => Q
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q
    ): (this: Self, ...args: Args) => Q

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q
    ): (...args: Args) => Q

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q,
      R
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q,
      r: (_: Q, ...args: Args) => R
    ): (...args: Args) => R
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q,
      R
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q,
      r: (_: Q, ...args: Args) => R
    ): (this: Self, ...args: Args) => R

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q,
      R
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q,
      r: (_: Q, ...args: Args) => R
    ): (...args: Args) => R

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q,
      R,
      S
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q,
      r: (_: Q, ...args: Args) => R,
      s: (_: R, ...args: Args) => S
    ): (...args: Args) => S
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q,
      R,
      S
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q,
      r: (_: Q, ...args: Args) => R,
      s: (_: R, ...args: Args) => S
    ): (this: Self, ...args: Args) => S

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q,
      R,
      S
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q,
      r: (_: Q, ...args: Args) => R,
      s: (_: R, ...args: Args) => S
    ): (...args: Args) => S

    <
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q,
      R,
      S,
      T
    >(
      body: (this: unassigned, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q,
      r: (_: Q, ...args: Args) => R,
      s: (_: R, ...args: Args) => S,
      t: (_: S, ...args: Args) => T
    ): (...args: Args) => T
    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q,
      R,
      S,
      T
    >(
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q,
      r: (_: Q, ...args: Args) => R,
      s: (_: R, ...args: Args) => S,
      t: (_: S, ...args: Args) => T
    ): (this: Self, ...args: Args) => T

    <
      Self,
      Eff extends Effect<any, any, any>,
      AEff,
      Args extends Array<any>,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q,
      R,
      S,
      T
    >(
      options: { readonly self: Self },
      body: (this: Self, ...args: Args) => Generator<Eff, AEff, never> | (Eff & Effect<AEff, any, any>),
      a: (
        _: Effect<
          AEff,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E
            : never,
          [Eff] extends [never] ? never
            : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R
            : never
        >,
        ...args: Args
      ) => A,
      b: (_: A, ...args: Args) => B,
      c: (_: B, ...args: Args) => C,
      d: (_: C, ...args: Args) => D,
      e: (_: D, ...args: Args) => E,
      f: (_: E, ...args: Args) => F,
      g: (_: F, ...args: Args) => G,
      h: (_: G, ...args: Args) => H,
      i: (_: H, ...args: Args) => I,
      j: (_: I, ...args: Args) => J,
      k: (_: J, ...args: Args) => K,
      l: (_: K, ...args: Args) => L,
      m: (_: L, ...args: Args) => M,
      n: (_: M, ...args: Args) => N,
      o: (_: N, ...args: Args) => O,
      p: (_: O, ...args: Args) => P,
      q: (_: P, ...args: Args) => Q,
      r: (_: Q, ...args: Args) => R,
      s: (_: R, ...args: Args) => S,
      t: (_: S, ...args: Args) => T
    ): (...args: Args) => T
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L10355)

Since v3.11.0