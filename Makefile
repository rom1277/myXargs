GREEN := $(shell tput setaf 2)
RESET := $(shell tput sgr0)
build:
	go build
rebuildbuild: clean build 
clean:
	rm -rf myXargs test
rebuild: clean build
test: build
	mkdir -p test
	touch test/1.txt test/2.txt test/3.txt test/4.txt test/5.txt test/6.txt test/7.txt
	@echo "$(GREEN)Running tests...$(RESET)"
	@echo "$(GREEN)test1 flag$(RESET)"
	echo "test" | ./myXargs ls -la
	@echo "--------------------------------------------------------------------------"
	@echo "$(GREEN)test2 $(RESET)"
	echo "test/1.txt\ntest/2.txt\ntest/3.txt\ntest/4.txt\ntest/5.txt\ntest/6.txt\ntest/7.txt" | ./myXargs rm
	@echo "--------------------------------------------------------------------------"
	@echo "$(GREEN)All tests completed!$(RESET)"

# test: build
# 	mkdir -p test
# 	touch test/1.txt test/2.txt test/3.txt test/4.txt test/5.txt test/6.txt test/7.txt
# 	@echo "$(GREEN)Running tests...$(RESET)"
# 	@echo "$(GREEN)test1 flag$(RESET)"
# 	echo -e "test\n" | ./myXargs ls -la
# 	@echo "--------------------------------------------------------------------------"
# 	@echo "$(GREEN)test2 $(RESET)"
# 	echo -e "test/1.txt\ntest/2.txt\ntest/3.txt\ntest/4.txt\ntest/5.txt\ntest/6.txt\ntest/7.txt" | ./myXargs rm
# 	@echo "--------------------------------------------------------------------------"
# 	@echo "$(GREEN)All tests completed!$(RESET)"