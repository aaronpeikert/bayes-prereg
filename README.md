
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Why does preregistration increase the persuasiveness of evidence? A Bayesian rationalization.

Preregistration is becoming increasingly popular in the psychological
sciences. At the same time, many researchers struggle to make precise
predictions and feel overwhelmed by the need to prespecify every detail
of their analysis plan. Should they surrender and discard the idea of
preregistration altogether? Not at all. We argue for the benefits of
preregistration beyond strictly confirmatory studies. Grounded in
Bayesian philosophy of science, we define a formal objective for
preregistration that neither declares changes to a preregistration to be
sinful nor punishes rigor. Our argument rests on the relevance of
“theoretical risk”, a generalization of type-I error rate, for judging
the evidential support for theories. Our proposal is that
preregistration should aim to reduce the uncertainty in judging the
theoretical risk instead of directly limiting the type-I error rate. We
argue that this reformulation extends the utility of preregistration and
is closer aligned with researchers intuition. If we do not know what a
researcher did, we have great uncertainty about the theoretical risk
they took. This uncertainty severely limits the utility of the
researchers’ evidence.

A successful prediction should lend more credibility to a theory than a
postdiction, all else equal. Much has been theorized on this important
distinction between exploration and confirmation, discovery and
justification, hypothesis generating and hypothesis testing and so forth
(see XXXX). To honor this distinction, many psychological studies are
preregistered to produce results that are considered confirmatory.
Rigorous application of preregistration prevents researcher from
reporting a simple confirmatory story for a set of results that were
produced by an arduous process of try and error. The scientific
community, widely agrees that actively concealing such “trying for
results” is misconduct. But what exactly is such concealment cheating
the scientific community of? We believe that a rigorous answer to this
question enables us to clear some common misunderstandings that lead
researchers to deem preregistration as unfit for their purposes. These
misunderstandings are interesting from a theoretical perspective but
also lead to decreased efficiency of the scientific process if
researcher misguidedly decide that preregistration is not applicable for
their intended study.

One reason why researchers are hesitant to preregister is that they feel
too limited by preregistration. Even researchers who have been persuaded
by its advantages sometimes apply strategies to skirt the self imposed
restrictions. One strategy is to write a loose preregistration to begin
with, another is to simply deviate from the preregistration afterward.
To complicate matters further, both strategies may be used with
compelling scientific reasoning or with the self-serving intent of
generating good looking results no matter the nature of the phenomenon
under study. To summarize, the conundrum is that current
conceptualization of preregistration deem a study “properly”
preregistrated even if it contains a recipe for p-hacking before data
collection but “improper” if the researcher did technically deviate
afterwards. This, of course, goes against common researchers intuition
about what is considered exploratory and confirmatory. We point these
issues out as symptoms of a misunderstanding.\#change We do want not to
discredit preregistration as a useful practice for advancing science,
but challenge the common view that preregistration somehow cleanly
separates confirmatory from exploratory.

Deciding if a study is confirmatory or exploratory is a judgment made by
the researcher. The aforementioned issues arise by delegating this
judgment to a simple decision rule, that is, if something is
preregistered it is confirmatory and if it is not preregistered it is
exploratory. Preregistering an analysis that is inherently exploratory
(like testing dozens of relations) does not make it confirmatory nor
will a careful confirmatory study become exploratory if researcher
deviate from the preregistration in minor details. To uphold the simple
decision rule, it is routinely suggested to only preregister when a
study is expected to have a low type I error rate by design and will
run/be analysed without changes no matter what. Under these conditions
the decision rule holds, but such restricted use makes preregistration a
niche solution not able to match the greater problem of replicability in
psychology and elsewhere.

We show that this simple decision rule is a special case of a more
general conceptualization under Bayesian reasoning. To that end, we
first introduce some basic tools of Bayesian philosophy of science and
map the exploration/confirmation distinction onto a dimensional quantity
we call “theorethical risk”, that is inversely related to type I error
rate. We than propose two interpretations of how theorethical risk is
influenced by preregistration. The first interpretation corresponds to
the traditional application of preregistration to research paradigms
that focus on confirmation by maximizing the theoretical risk or
equivalently limiting type I error. The second interpretation, is our
main contribution, and shows broad applicability of preregistration for
both exploratory and confirmatory studies that are implemented as
preregistered or have undergone changes. Under this interpretation
theoretical risk is not necessarily directly maximized by
preregistration but the uncertainty in judging the theoretical risk is
minimized. This changed viewpoint is crucial for the following reason.
Directly maximizing theoretical risk does, as the name implies, increase
the risk that a study does fail to deliver results in favor of the
theory. Minimizing the uncertainty around the theoretical risk, as we
will later show, shares the beneficial properties but without increasing
likelihood of a “failed” study. Let us note, that a study that is not
able to find evidence that a researcher is hoping for, is still
immensely valuable for the scientific process. Under the current
incentive structure, however, many researchers have reason to avoid such
outcome and few, if any, have the privalige to operate outside of these
incentives. We therefore propose an interpretation of preregistration
that increases the expected epistemic value of studies without
necessarily increasing the theoretical risk.

## The epistemic value of studies from a bayesian perspective

Let us start by defining what we mean by expected epistemic value. If
researchers plan to conduct a study they usually hope it will change
their assessment of the verisimilitude (truthlikeness) of some theory.
In other words, they hope to learn something from conducting the study.
The amount of knowledge researchers gain from a particular study in
relation to a specific theory is what we call epistemic value. While
researcher can not know what exactly they will learn from a study, they
can form an expectation. This expectation is what we call expected
epistemic value. We assume three things about this process of estimation
and how it relates to choosing a study to conduct.

1.  Researchers judge evidence for or against a hypothesis rationally.
2.  They expect other researchers to apply the same rational process.
3.  All else equal, researchers try to increase the expected epistemic
    value for other researchers.

The first assumption leads to our adoption of a Bayesian framework. Our
rational is as follows. Researchers that decide to conduct a study are
akin to choosing a study to bet on. They have to “place the bet” by
conducting the study therefore invest resources and stand to gain
epistemic value with some probability. This conceptualization of
choosing a study to conduct as a betting problem, lets us apply a “Dutch
Book” argument. This argument, states that any better must follow the
axioms of probability if they want to avoid being “irrational”, i.e.,
accept bets with sure losses. Fully developing a Dutch book argument for
this problem requires a careful consideration of what kind of studies to
include as possible bets, defining a conversion rate from the stakes to
the reward, and modeling what liberties researchers have in choosing a
study. Without deliberating these concepts further, we find it
persuasive that researchers should not violate the axioms of probability
if they have some expectation about what they stand to gain with some
likelihood from conducting a study. The axioms of probability are all
that is required to derive the famous Bayes formula, on which we will
heavily rely for our arguments. Please note that our decision to adopt a
Bayesian philosophy of science does not imply anything about the
statistical methods researcher use. In fact, this conceptualization is
purposefully reductionistic to be compatible with a wide range of
philosophies of science and statistical methods researchers might
subscribe to. Our conclusions can be applied to bayesian and frequentist
methods alike. Of course, frequentist methods are traditionally viewed
from a poperian philosophy of science, but our conclusions are
compatible with it and notable later advancements like the error
statistical view. However, those philosophies of science require a much
richer set of assumptions that are not quite necessary for the points we
want to make.

## Relating Riskiness to epistemic value

The first point is that risky predictions create persuasive evidence, if
they turn out to be correct. This point is important because we
attribute much of the appeal of preregistration to this fact.

Let us make some simplifying assumptions and define notation. We
restrict ourselfs to consider evidence of a binary nature (either exists
or does not), since continues evidence would led to some quite involved
derivations. We denote the probability of a theory before observing
evidence as \(P(H)\) and its complement as \(P(¬H) = 1 - P(H)\). The
probability of observing evidence under some hypothesis is \(P(E|H)\).
The total probability of evidence, \(P(E)\), is given by
\(P(H)P(E|H) + P(¬H)P(E|¬H)\). From these probabilities we can calculate
the probability of the hypothesis after observing the evidence via:

\[
P(H|E) = \frac{P(H)P(E|H)}{P(H)P(E|H) + P(¬H)P(E|¬H)}
\]

From the three probabilities involved in the calculation \(P(E|¬H)\) is
the one our argument rests on.

The other two assumptions are later necessary to connect individual
decisions that effect epistemic value to the research community as a
whole.

Observe, that since \(P(E|¬H)\)

Please note, that we adopt a Bayesian rational for the meta scientific
process of preregistration but that this does not imply any ties to the
methods a researcher uses.

However, we aim to show that preregistration is indispensable for
adequately judging a much broader range of studies. To that end, we
first rationalize the appreciation for conformation using Bayesian
reasoning. Equipped with some of the basic tools of Bayesian Philosophy
of Science, we can move beyond a simple dichotomy of exploration and
confirmation.

To that end we show that the appreciation for the distinction between
exploration and confirmatory neatly falls in line with Bayesian
reasoning connected through a quantity we call *theorethical risk*. Than
we proceed to show that preregistration impacts the theorethical risk
via two pathways. Only considering the one path rationalizes
recommendation to employ preregistration only for confirmatory studies,
taking both paths together into consideration leads to a much wider
applicability of preregistration.

But what exactly have you been cheated of? This appreciation of
confirmatory results falls neatly in line with Bayesian reasoning (XXX).
<!-- We leverage this reasoning to outline two paradigms that rationalize the use of preregistration. -->
In order to apply Bayesian reasoning we have to cast conformation and
exploration in terms of probability. Consider the hypothesis that people
who regularly engage in fitness activities are healthier. A confirmatory
story might operationalize regularly as weekly, fitness activity as
light jogging and healthy as blood cholesterol level. A more exploratory
study might consider several definitions of “regularly”, “fitness
activities”, and “healthy”, e.g. “monthly”, “weekly”, “daily”, or
“marathon”, “light jogging”, “intense cleaning”, or “cholesterol”,
“self rated health”, “ability to play tag”. Both studies have some
probability to turn up with positive results even in a world where
fitness activities do not lead to healthier people, because there are
other plausible explanations for the results. However, for the second
study the number of explanations that could lead to evidence in favor,
aside from the theory is much greater. Suppose a researcher actually
conducted the second study but is reporting it as if they conducted the
first study. You would feel cheated. But what exactly have you been
cheated of? In fact, you have been cheated out of the information about
all the possibilities that could have brought about this evidence. We
summarize these possibilities as a probability. Therefore, we argue that
confirmatory studies have a low probability of observing evidence in
favor of their theory if we assume the theory to be false. Exploratory
studies on the other hand are characterized by a higher probability that
they find evidence, even when their hypothesis turns out to be wrong.

We connect the question of exploration vs confirmation to Bayesian
reasoning via a quantity we call theoretical risk (we borrow the term
from Meehl).

Theoretical risk is the inverse of the probability that one observes
evidence in favor of a theory when we assume that the theory does not
hold. We assume that confirmatory studies take a high theoretical risk,
compared to exploratory studies which take a low theoretical risk. The
tighter your definition of “evidence in favor” is, the more the
probability of observing the evidence is tied to your theory holding.

<!-- Caroline does not see the connection to type I error rate/theoretical risk -->

Let us formalize the judgment about a hypothesis (H) given some evidence
(E) as the conditional probability \(p(H|E)\).

Using Bayes’ rule we arrive at:

\[
p(H|E) = \frac{p(H)p(E|H)}{p(H)p(E|H) + p(¬H)p(E|¬H)}
\]

Note the connection to null hypothesis testing. If H represents the
alternative Hypothesis and ¬H represents the Null hypothesis, then
\(p(E|H)\) is the power, while \(p(E|¬H)\) represents the type I/alpha
error. However, generally a theory is richer in content, than equating
it with the alternaive hypothesis in Null hypothesis testing.

<!-- continue to justify the importance of theorethical risk -->

The first paradigm is embraced by the open science community and
conceptualizes preregistration as a tool to reduce the type I error rate
(XXXX). As we will later show, reducing the type I error rate is indeed
a powerful leaver to gather persuasive evidence. In practice, however,
researchers can not reduce the type I error rate at will. They face
three limiting factors. First, psychological theories tend to be vague.
Some decisions are just not derivable from theory, which makes it
extraordinarily difficult to maintain a type I error rate near zero.
Second, researchers are constrained by resource limitations. One way to
counter the first problem is conducting exploratory pilot studies, but
running extensive pilot studies is expensive. Doubling the resources
that go into investigating a research question is often just not tenable
and mostly beyond the individual researcher to decide. Third, by
reducing the type I error rate the researcher directly increases the
likelihood that their study will result in disappointing null results. A
study that fails to deliver results can be crippling to the researchers
career. Depending on individual circumstances, e.g. the theory in
question, resources allocated to a study, the career stage of the
researcher, a researcher may simply feel unable to reduce the type I
error rate to the threshold necessary for a confirmatory study.
Constrained by these factors researchers tasked with writing a
preregistration are incentiviced to either give up or to muddle through
by being intentionally vague. The latter practice leads to
preregistrations stating unspecific assumptions such as “we expect some
of the Xs to correlate with some of the Ys”.
