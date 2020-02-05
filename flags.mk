# Change these to match your configuration
INCLUDES = /home/am/repos/webgraph
LIBS = /home/am/repos/webgraph

base = -I$(INCLUDES) -L$(LIBS) -Wall

ifdef CONFIG_PROFILE
	prof = -pg
else
	prof =
endif

ifndef CONFIG_DBG
	FLAGS = $(base) -DCONFIG_FAST -O3 $(prof)
else
	FLAGS = $(base) -DCONFIG_FAST -g $(prof)
endif
